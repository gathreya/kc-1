/*
 * Copyright 2005-2014 The Kuali Foundation
 * 
 * Licensed under the Educational Community License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.opensource.org/licenses/ecl1.php
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package org.kuali.kra.proposaldevelopment.bo;

import java.io.Serializable;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.PrimaryKeyJoinColumns;
import javax.persistence.Table;
import org.apache.commons.lang3.builder.CompareToBuilder;
import org.apache.commons.lang3.builder.EqualsBuilder;
import org.apache.commons.lang3.builder.HashCodeBuilder;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.kuali.coeus.common.framework.person.attr.KcPersonExtendedAttributes;
import org.kuali.kra.bo.PersonAppointment;
import org.kuali.kra.bo.PersonDegree;
import org.kuali.kra.proposaldevelopment.bo.ProposalPerson;

/**
 * 
 * This class manages the copy of each proposal person's extended attributes, and are edit-able.
 */
@Entity
@Table(name = "EPS_PROP_PERSON_EXT")
@IdClass(ProposalPersonExtendedAttributes.ProposalPersonExtendedAttributesId.class)
public class ProposalPersonExtendedAttributes extends KcPersonExtendedAttributes {

    /**
     * Comment for <code>serialVersionUID</code>
     */
    private static final long serialVersionUID = 4756287061318140215L;

    private static final String UNSUPPORTED_OPPERATION_ERROR_MESSAGE = "ProposalPersonExtendedAttributes intentionally not supporting this method.";

    @Id
    @Column(name = "PROPOSAL_NUMBER")
    private String proposalNumber;

    @Id
    @Column(name = "PROP_PERSON_NUMBER")
    private Integer proposalPersonNumber;

    @Column(name = "PROP_PERSON_ROLE_ID")
    private String proposalPersonRoleId;

    @OneToOne(mappedBy="proposalPersonExtendedAttributes")
    @PrimaryKeyJoinColumns({ @PrimaryKeyJoinColumn(name = "PROPOSAL_NUMBER", referencedColumnName = "PROPOSAL_NUMBER"), @PrimaryKeyJoinColumn(name = "PROP_PERSON_NUMBER", referencedColumnName = "PROP_PERSON_NUMBER") })
    private ProposalPerson proposalPerson;

    /**
     * 
     * Constructs a ProposalPersonExtendedAttributes.java. Default constructor.
     */
    public ProposalPersonExtendedAttributes() {
    }

    /**
     * 
     * Constructs a ProposalPersonExtendedAttributes.java.
     * @param person
     */
    public ProposalPersonExtendedAttributes(ProposalPerson person) {
        this();
        if (person == null) {
            throw new IllegalArgumentException("ProposalPerson must not be null!");
        }
        this.setProposalNumber(person.getProposalNumber());
        this.setProposalPersonNumber(person.getProposalPersonNumber());
        this.setProposalPersonRoleId(person.getProposalPersonRoleId());
        this.setProposalPerson(person);
        this.setCitizenshipTypeCode(1);
    }

    /**
     * 
     * Constructs a ProposalPersonExtendedAttributes.java. This constructor will generally be used.
     * @param person
     * @param personExtendedAttributes
     */
    public ProposalPersonExtendedAttributes(ProposalPerson person, KcPersonExtendedAttributes personExtendedAttributes) {
        this(person);
        if (personExtendedAttributes == null) {
            throw new IllegalArgumentException("KcPersonExtendedAttributes must not be null");
        }
        this.setPersonId(personExtendedAttributes.getPersonId());
        this.setAgeByFiscalYear(personExtendedAttributes.getAgeByFiscalYear());
        this.setRace(personExtendedAttributes.getRace());
        this.setEducationLevel(personExtendedAttributes.getEducationLevel());
        this.setDegree(personExtendedAttributes.getDegree());
        this.setMajor(personExtendedAttributes.getMajor());
        this.setHandicappedFlag(personExtendedAttributes.getHandicappedFlag());
        this.setHandicapType(personExtendedAttributes.getHandicapType());
        this.setVeteranFlag(personExtendedAttributes.getVeteranFlag());
        this.setVeteranType(personExtendedAttributes.getVeteranType());
        this.setVisaCode(personExtendedAttributes.getVisaCode());
        this.setVisaType(personExtendedAttributes.getVisaType());
        this.setVisaRenewalDate(personExtendedAttributes.getVisaRenewalDate());
        this.setHasVisa(personExtendedAttributes.getHasVisa());
        this.setOfficeLocation(personExtendedAttributes.getOfficeLocation());
        this.setSecondaryOfficeLocation(personExtendedAttributes.getSecondaryOfficeLocation());
        this.setSchool(personExtendedAttributes.getSchool());
        this.setYearGraduated(personExtendedAttributes.getYearGraduated());
        this.setDirectoryDepartment(personExtendedAttributes.getDirectoryDepartment());
        this.setPrimaryTitle(personExtendedAttributes.getPrimaryTitle());
        this.setDirectoryTitle(personExtendedAttributes.getDirectoryTitle());
        this.setVacationAccrualFlag(personExtendedAttributes.getVacationAccrualFlag());
        this.setOnSabbaticalFlag(personExtendedAttributes.getOnSabbaticalFlag());
        this.setIdProvided(personExtendedAttributes.getIdProvided());
        this.setIdVerified(personExtendedAttributes.getIdVerified());
        this.setCounty(personExtendedAttributes.getCounty());
        this.setCitizenshipTypeCode(personExtendedAttributes.getCitizenshipTypeCode());
        this.setCitizenshipType(personExtendedAttributes.getCitizenshipType());
    }

    public String getProposalNumber() {
        return proposalNumber;
    }

    public void setProposalNumber(String proposalNumber) {
        this.proposalNumber = proposalNumber;
    }

    public Integer getProposalPersonNumber() {
        return proposalPersonNumber;
    }

    public void setProposalPersonNumber(Integer proposalPersonNumber) {
        this.proposalPersonNumber = proposalPersonNumber;
    }

    public String getProposalPersonRoleId() {
        return proposalPersonRoleId;
    }

    public void setProposalPersonRoleId(String proposalPersonRoleId) {
        this.proposalPersonRoleId = proposalPersonRoleId;
    }

    public ProposalPerson getProposalPerson() {
        return proposalPerson;
    }

    public void setProposalPerson(ProposalPerson proposalPerson) {
        this.proposalPerson = proposalPerson;
    }

    /**
     * 
     * @see org.kuali.coeus.common.framework.person.attr.KcPersonExtendedAttributes#setPersonDegrees(java.util.List)
     */
    @Override
    public void setPersonDegrees(List<PersonDegree> personDegrees) {
        throw new UnsupportedOperationException(UNSUPPORTED_OPPERATION_ERROR_MESSAGE);
    }

    /**
     * 
     * @see org.kuali.coeus.common.framework.person.attr.KcPersonExtendedAttributes#getPersonDegrees()
     */
    @Override
    public List<PersonDegree> getPersonDegrees() {
        return super.getPersonDegrees();
    }

    /**
     * 
     * @see org.kuali.coeus.common.framework.person.attr.KcPersonExtendedAttributes#getPersonAppointments()
     */
    @Override
    public List<PersonAppointment> getPersonAppointments() {
        return super.getPersonAppointments();
    }

    /**
     * 
     * @see org.kuali.coeus.common.framework.person.attr.KcPersonExtendedAttributes#setPersonAppointments(java.util.List)
     */
    @Override
    public void setPersonAppointments(List<PersonAppointment> personAppointments) {
        throw new UnsupportedOperationException(UNSUPPORTED_OPPERATION_ERROR_MESSAGE);
    }

    public static final class ProposalPersonExtendedAttributesId implements Serializable, Comparable<ProposalPersonExtendedAttributesId> {

        private String proposalNumber;

        private Integer proposalPersonNumber;

        public String getProposalNumber() {
            return this.proposalNumber;
        }

        public void setProposalNumber(String proposalNumber) {
            this.proposalNumber = proposalNumber;
        }

        public Integer getProposalPersonNumber() {
            return this.proposalPersonNumber;
        }

        public void setProposalPersonNumber(Integer proposalPersonNumber) {
            this.proposalPersonNumber = proposalPersonNumber;
        }

        @Override
        public String toString() {
            return new ToStringBuilder(this).append("proposalNumber", this.proposalNumber).append("proposalPersonNumber", this.proposalPersonNumber).toString();
        }

        @Override
        public boolean equals(Object other) {
            if (other == null)
                return false;
            if (other == this)
                return true;
            if (other.getClass() != this.getClass())
                return false;
            final ProposalPersonExtendedAttributesId rhs = (ProposalPersonExtendedAttributesId) other;
            return new EqualsBuilder().append(this.proposalNumber, rhs.proposalNumber).append(this.proposalPersonNumber, rhs.proposalPersonNumber).isEquals();
        }

        @Override
        public int hashCode() {
            return new HashCodeBuilder(17, 37).append(this.proposalNumber).append(this.proposalPersonNumber).toHashCode();
        }

        @Override
        public int compareTo(ProposalPersonExtendedAttributesId other) {
            return new CompareToBuilder().append(this.proposalNumber, other.proposalNumber).append(this.proposalPersonNumber, other.proposalPersonNumber).toComparison();
        }
    }
}